while ($true) {

    $status = git status --porcelain

    if ($status) {

        Write-Host ""
        Write-Host "Changes detected..." -ForegroundColor Cyan

        git add .

        $time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

        git commit -m "Auto update $time"

        git push

        Write-Host "Successfully pushed to GitHub!" -ForegroundColor Green
        Write-Host ""
    }

    Start-Sleep -Seconds 10
}