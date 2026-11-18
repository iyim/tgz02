.class public Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static deviceModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstalledAppList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->packageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 35
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 36
    new-instance v5, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;

    invoke-direct {v5}, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;-><init>()V

    .line 37
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;->appName:Ljava/lang/String;

    .line 38
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;->packageName:Ljava/lang/String;

    .line 39
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v5, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;->versionName:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getMCCAndMNC(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    const-string v0, "phone"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    :cond_0
    return-object v0
.end method

.method private static getMajorVersion(I)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getPhoneStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 59
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->deviceModel:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 60
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->deviceModel:Ljava/lang/String;

    .line 62
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->deviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public static getScreenDpi(Landroid/content/Context;)F
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 107
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getScreenPixels(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    .line 146
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    move-object v4, v0

    nop

    nop

    move-object v5, v0

    nop

    nop

    move-object v6, v0

    nop

    nop

    move-object v7, v0

    nop

    nop

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uuid_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 151
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 153
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 153
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 155
    throw v1
.end method

.method public static getVersionFromPackageManager(Landroid/content/Context;)I
    .locals 5

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 118
    array-length v1, p0

    if-lez v1, :cond_2

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 121
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 122
    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz p0, :cond_0

    .line 123
    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->getMajorVersion(I)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isMeitu()Z
    .locals 2

    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meitu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
