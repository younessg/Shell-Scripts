#!/bin/bash         

echo ""
echo "Starting repo sync and multi builds for:"
echo ""
echo "============="
echo "| l-shinano |"
echo "============="
echo ""
echo "Repo sync the entire project"
echo ""
repo sync -j11
echo ""

# 8. castor-userdebug
echo "Starting build for option: 8. castor-userdebug"
echo "----------------------------------------------"
echo ""
source build/envsetup.sh && lunch 8
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 8. castor-userdebug"
echo "--------------------------------------------"
echo ""

# 11. leo-userdebug
echo "Starting build for option: 11. leo-userdebug"
echo "--------------------------------------------"
echo ""
source build/envsetup.sh && lunch 11
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 11. leo-userdebug"
echo "------------------------------------------"
echo ""

# 14. aries-userdebug
echo "Starting build for option: 14. aries-userdebug"
echo "----------------------------------------------"
echo ""
source build/envsetup.sh && lunch 14
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 14. aries-userdebug"
echo "--------------------------------------------"
echo ""

# 17. canopus-userdebug
echo "Starting build for option: 17. canopus-userdebug"
echo "------------------------------------------------"
echo ""
source build/envsetup.sh && lunch 17
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 17. canopus-userdebug"
echo "----------------------------------------------"
echo ""

# 20. scorpion-userdebug
echo "Starting build for option: 20. scorpion-userdebug"
echo "-------------------------------------------------"
echo ""
source build/envsetup.sh && lunch 20
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 20. scorpion-userdebug"
echo "-----------------------------------------------"
echo ""

# 26. sirius-userdebug
echo "Starting build for option: 26. sirius-userdebug"
echo "-----------------------------------------------"
echo ""
source build/envsetup.sh && lunch 26
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 26. sirius-userdebug"
echo "---------------------------------------------"
echo ""

# 29. castor_windy-userdebug
echo "Starting build for option: 29. castor_windy-userdebug"
echo "-----------------------------------------------------"
echo ""
source build/envsetup.sh && lunch 29
echo ""
make -j11 fullbuild
echo ""
echo "Ending build for option: 29. castor_windy-userdebug"
echo "---------------------------------------------------"
echo ""

echo ""
echo "============================================"
echo "| End of build for all l-shinano products! |"
echo "============================================"
echo ""
echo ""


