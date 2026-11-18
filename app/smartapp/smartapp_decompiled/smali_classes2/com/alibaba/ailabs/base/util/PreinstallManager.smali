.class public Lcom/alibaba/ailabs/base/util/PreinstallManager;
.super Ljava/lang/Object;
.source "PreinstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;
    }
.end annotation


# static fields
.field public static final PREINSTALL_RETRY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreinstallUtils"


# instance fields
.field private mPreinstallCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager;->mPreinstallCountMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/base/util/PreinstallManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager;->mPreinstallCountMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->isUpload(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->updateApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->isPreinstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->installApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private installApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->startPreinstall(Ljava/lang/String;)V

    .line 198
    :cond_0
    new-instance v4, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;-><init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    return-void
.end method

.method private isPreinstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 173
    :cond_2
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->isCurrentPkgInBlack(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "PreinstallUtils"

    if-eqz v2, :cond_3

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreinstallInstall isPreinstall isCurrentPkgInBlack packageName\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 178
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v0

    :cond_4
    const-string v4, "http"

    .line 183
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 187
    :cond_5
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreinstallInstall isPreinstall isApkAvailable packageName\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private isUpload(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 103
    :cond_1
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->isCurrentPkgInBlack(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PreinstallUtils"

    if-eqz v1, :cond_2

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPreinstallInstall isUpload isCurrentPkgInBlack packageName\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 108
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApkVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkShouldUpdate(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPreinstallInstall isUpload no isApkShouldUpdate packageName\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const-string v1, "http"

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private updateApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->startUpload(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/alibaba/ailabs/base/util/PreinstallManager$2;-><init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 130
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public checkPreinstallAndUpload(Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;",
            "Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;",
            ")V"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPreinstallInstall dataList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreinstallUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;-><init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
