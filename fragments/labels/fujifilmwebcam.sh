fujifilmwebcam)
     name="FUJIFILM X Webcam 2"
     type="pkg"
     downloadURL=$(curl -fs "https://fujifilm-x.com/en-us/support/download/software/x-webcam/" | grep "https.*pkg" | sed -E 's/.*(https:\/\/dl.fujifilm-x\.com\/support\/software\/.*\.pkg[^\<]).*/\1/g' | sed -e 's/^"//' -e 's/"$//')
     appNewVersion=$( echo “${downloadURL}” | sed -E 's/.*\/[a-zA-Z]*-([0-9.]*)\..*/\1/g' )
     expectedTeamID="34LRP8AV2M"
     ;;
