.class public Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;
.super Ljava/lang/Object;
.source "SettingClearUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;,
        Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingClearUtil-l"

.field private static USER_ID:I = -0x1

.field private static count:I

.field private static sOnClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()I
    .locals 1

    .line 25
    sget v0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->count:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 25
    sput p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->count:I

    return p0
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;
    .locals 1

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->sOnClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    return-object v0
.end method

.method public static clearAllAppCache(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V
    .locals 8

    .line 58
    sput-object p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->sOnClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getUserid()I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getProfileIdsWithDisabledMethod(Landroid/os/UserManager;I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    sput v1, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->count:I

    .line 64
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 65
    invoke-static {p0, v1, v4}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v5

    .line 66
    new-instance v6, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;

    new-instance v7, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$1;

    invoke-direct {v7, v5}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$1;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v7}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;-><init>(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V

    .line 78
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 79
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7, v4, v6}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->deleteApplicationCacheFilesAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;ILcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearAppData(Ljava/lang/String;Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V
    .locals 10

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    const-string v0, ""

    .line 34
    invoke-interface {p1, v0, p0}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;->onClearFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getUserid()I

    move-result v2

    .line 41
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getProfileIdsWithDisabledMethod(Landroid/os/UserManager;I)[I

    move-result-object v1

    .line 42
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, v1, v4

    .line 43
    invoke-static {v0, v3, v5}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v6

    .line 44
    new-instance v7, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;

    invoke-direct {v7, p1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;-><init>(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V

    .line 45
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 46
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v8, v5, v7}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->deleteApplicationCacheFilesAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;ILcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static clearApplicationUserData(Landroid/content/pm/PackageManager;Ljava/lang/String;ILcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;)V
    .locals 2

    const-string p2, "clearApplicationUserData"

    .line 122
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getMethodByName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x2

    .line 124
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception pm clearApplicationUserData: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingClearUtil-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static clearCacheByPkgName(Ljava/lang/String;Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V
    .locals 10

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    const-string v0, ""

    .line 91
    invoke-interface {p1, v0, p0}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;->onClearFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getUserid()I

    move-result v2

    .line 98
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getProfileIdsWithDisabledMethod(Landroid/os/UserManager;I)[I

    move-result-object v1

    .line 99
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, v1, v4

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SettingClearUtil-l"

    invoke-static {v7, v6}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v3, v5}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v6

    .line 102
    new-instance v7, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;

    invoke-direct {v7, p1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;-><init>(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V

    .line 103
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 104
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 105
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v8, v5, v7}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->deleteApplicationCacheFilesAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;ILcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static deleteApplicationCacheFilesAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;ILcom/alibaba/ailabs/cleaner/util/SettingClearUtil$ClearDataObsver;)V
    .locals 3

    const-string v0, "deleteApplicationCacheFilesAsUser"

    .line 112
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getMethodByName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    .line 114
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception pm deleteApplicationCacheFilesAsUser: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingClearUtil-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string p1, "getInstalledPackagesAsUser"

    .line 132
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getMethodByName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x2

    .line 134
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception pm getInstalledPackagesAsUser: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingClearUtil-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethodByName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 184
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 185
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pm method not find -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingClearUtil-l"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethodByName(Landroid/os/UserManager;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 173
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 174
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "um method not find -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingClearUtil-l"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getProfileIdsWithDisabledMethod(Landroid/os/UserManager;I)[I
    .locals 3

    const-string v0, "getProfileIdsWithDisabled"

    .line 161
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->getMethodByName(Landroid/os/UserManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception um getProfileIdsWithDisabledMethod: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingClearUtil-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUserid()I
    .locals 7

    .line 144
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 146
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getUserId"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception pm getUserid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingClearUtil-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public static removeClear()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->sOnClearCallback:Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
