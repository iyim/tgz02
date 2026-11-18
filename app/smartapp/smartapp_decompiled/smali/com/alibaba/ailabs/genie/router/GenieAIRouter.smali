.class public Lcom/alibaba/ailabs/genie/router/GenieAIRouter;
.super Ljava/lang/Object;
.source "GenieAIRouter.java"


# static fields
.field public static final CLOUDAPP_URI:Ljava/lang/String; = "genie://com.alibaba.genie.cloudapp/connect"

.field public static final EXIT_WINDOW_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp.exit.loadwindow"

.field public static final JUMP_ACTIVITY:I = 0x0

.field public static final JUMP_BROADCAST:I = 0x2

.field public static final JUMP_SERVIVCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GenieAIRouter"

.field private static mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    return-object v0
.end method

.method private static addSearchIdToURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 842
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "timestamp"

    .line 843
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->addUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static addUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 851
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    .line 852
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "="

    if-nez v1, :cond_0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkAppIsInstallByPkgName(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 4

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 921
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    if-eqz v0, :cond_1

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find app by pkgname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p2, 0x10000000

    .line 924
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 927
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object p2

    const-string/jumbo v0, "tHSM0JWysNYW"

    invoke-virtual {p2, p0, v0}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 928
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getRouterUploadOpenDataBlackList()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 929
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->reportRecentUseInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "not found,app by pkgname ,maybe not have launcher info"

    .line 932
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static checkIsCloudApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "genie"

    .line 866
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "GenieAIRouter"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "com.alibaba.genie.cloudapp"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/connect"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCloudApp:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->checkAppIsInstallByPkgName(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 870
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 872
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isaligenieCloudAppLink:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genie://com.alibaba.genie.cloudapp/connect?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 874
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_1

    .line 876
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CLOUDAPP_URI parse is null\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "pkgname"

    .line 879
    invoke-virtual {p3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aligenieCloudApp relace new uri:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pkgname:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-static {p0, p3}, Lcom/alibaba/ailabs/genie/router/checkUtil/GenieAIRouterUtils;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "aligenieCloudApp-nativeapp installed, pkgname:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 888
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aligenieCloudApp-nativeapp not installed, pkgname:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/genie/router/checkUtil/GenieAIRouterUtils;->isUriAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 891
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aligenieCloudApp  cloudAppUri Available start open, uri:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 892
    invoke-static {p0, p2, v1, v0, p3}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->openByUri(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 894
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object p2

    const-string/jumbo p3, "tHSM0JWysNYW"

    invoke-virtual {p2, p0, p3}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 895
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getRouterUploadOpenDataBlackList()Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->reportRecentUseInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 901
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "aligenieCloudApp  cloudAppUri not Available return uri:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 910
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v1
.end method

.method public static convertIntegerArrayToString([Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1299
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 1300
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1304
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getCloudConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;
    .locals 6

    .line 976
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    const/4 v0, 0x0

    .line 984
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v1

    const-string/jumbo v2, "tHSM0JWysNYW"

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v1

    const-string v2, "GenieAIRouter"

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "router getOrangeConfig; key=tHSM0JWysNYW, routerBean="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v4, "not null"

    goto :goto_0

    :cond_1
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    .line 988
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getLoadingPageData()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 993
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;->getUri()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 999
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1000
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;

    if-eqz v4, :cond_9

    .line 1001
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1003
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getHostList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_6

    :cond_4
    const/4 p1, 0x0

    .line 1007
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 1008
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;

    if-eqz v1, :cond_8

    .line 1010
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1011
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getPathList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    .line 1015
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 1016
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    if-eqz p1, :cond_6

    .line 1018
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1019
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move-object p1, v0

    :goto_4
    move-object v0, p1

    goto :goto_7

    :cond_8
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1032
    :cond_a
    :goto_7
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->remodify(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1036
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;
    .locals 4

    .line 959
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getCloudConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    move-result-object v0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "router getCloudConfig; config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "null"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GenieAIRouter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 962
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getLocalFileConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    move-result-object v0

    .line 963
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "router getLocalFileConfig; config="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 965
    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getLocalConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    move-result-object v0

    .line 966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "router getLocalConfig; config="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private static getIntentFlag(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, ";"

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 457
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "launchFlags"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "="

    .line 459
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/high16 p0, 0x10000000

    return p0
.end method

.method private static getLocalConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1146
    new-instance v3, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;-><init>()V

    const-string/jumbo v4, "webapp"

    .line 1147
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "/h5/game"

    const-string v7, "/ampe"

    const-string v8, "/tpl"

    const-string v9, "com.alibaba.ailabs.genie.launcher"

    const-string v10, "/open"

    const-string v11, "com.alibaba.ailabs.genie.antforrest"

    const-string v12, "com.alibaba.ailabs.genie.webapps"

    const-string v13, "genie"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1148
    :cond_1
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1149
    :cond_2
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "com.alibaba.genie.tpl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1151
    :cond_3
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x7530

    .line 1153
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1154
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1156
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto/16 :goto_0

    .line 1157
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x7d0

    .line 1158
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1159
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1160
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    .line 1161
    :cond_5
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x9c40

    .line 1162
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1163
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1164
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    .line 1165
    :cond_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v14, 0x4e20

    if-eqz v5, :cond_7

    .line 1166
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1167
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1168
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    :cond_7
    const-string v5, "/webview/open"

    .line 1169
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1171
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1172
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    const/4 v5, 0x0

    .line 1173
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    :cond_8
    const-string v5, "/webviewPage"

    .line 1174
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1176
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1177
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    const/4 v5, 0x0

    .line 1178
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    const/16 v14, 0x1770

    .line 1180
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1181
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1182
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    .line 1186
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1187
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1188
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    .line 1191
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1193
    :cond_c
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "nlp"

    .line 1196
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setVoiceParameter(Ljava/lang/String;)V

    :cond_d
    const-string v5, "com.alibaba.ailabs.genie.smartapp"

    .line 1199
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "/voice"

    .line 1201
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "text"

    .line 1203
    invoke-virtual {v3, v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setVoiceParameter(Ljava/lang/String;)V

    .line 1206
    :cond_e
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    goto :goto_2

    :cond_10
    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_3

    .line 1210
    :goto_2
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setShowProgress(Z)V

    goto :goto_4

    .line 1207
    :cond_11
    :goto_3
    invoke-virtual {v3, v15}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setShowProgress(Z)V

    .line 1214
    :goto_4
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_12
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_13
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_5

    .line 1216
    :cond_14
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1217
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setPackageName(Ljava/lang/String;)V

    goto :goto_5

    .line 1218
    :cond_15
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_16
    :goto_5
    return-object v3
.end method

.method public static getLocalFileConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;
    .locals 6

    .line 1231
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    const/4 v0, 0x0

    .line 1236
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getLocalFile(Landroid/content/Context;)V

    .line 1238
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getLocalFileRouterBean()Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1243
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getLocalFileRouterBean()Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getLoadingPageData()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 1248
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean;->getUri()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1254
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1255
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;

    if-eqz v4, :cond_8

    .line 1256
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1258
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean;->getHostList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 1262
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 1263
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;

    if-eqz v1, :cond_7

    .line 1265
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1266
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean;->getPathList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 1270
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    .line 1271
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    if-eqz p1, :cond_6

    .line 1273
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1274
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    move-object p1, v0

    .line 1286
    :goto_5
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->remodify(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 1291
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    .line 944
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 945
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 947
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 948
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static invokeSkill(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "GenieAIRouter"

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeSkill, coinEventNs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "null"

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; coinEventName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; eventDetail="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1320
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "coinEventNs"

    .line 1321
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coinEventName"

    .line 1322
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    const-string p1, "eventDetail"

    .line 1324
    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "eventIssuedContext"

    .line 1327
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p0

    const-string p1, "AliGenie.Routine"

    const-string p2, "EventIssued"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1335
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "vc"

    .line 670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/appstore?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 675
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "genie"

    .line 680
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "/voice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    .line 684
    :cond_1
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.alibaba.ailabs.genie.webapps"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 687
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 696
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 697
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 698
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 699
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v1, :cond_18

    .line 161
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_c

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=================enter router, open uri ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", lunchMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "null"

    goto :goto_0

    :cond_1
    move-object/from16 v7, p3

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; begin time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GenieAIRouter"

    .line 166
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=video"

    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, "ykiot://yingshi_home?from=tmall"

    .line 186
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, ""

    if-eqz v6, :cond_3

    .line 193
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 194
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_1
    const-string v13, "isShowPicIcon"

    const-string v15, "isGameRouter"

    const-string v16, "0"

    const-string v12, "1"

    if-eqz v6, :cond_6

    const-string v14, "pkgname"

    .line 207
    invoke-virtual {v6, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v0

    const-string v0, "aligenieCloudApp"

    .line 208
    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    .line 210
    invoke-virtual {v6, v15, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v12

    goto :goto_2

    :cond_4
    move-object/from16 v20, v16

    :goto_2
    const/4 v8, 0x1

    .line 217
    invoke-virtual {v6, v13, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object v8, v0

    move-object v0, v12

    move-object/from16 v21, v13

    goto :goto_3

    :cond_5
    move-object v8, v0

    move-object/from16 v21, v13

    move-object/from16 v0, v16

    goto :goto_3

    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object v0, v12

    move-object/from16 v21, v13

    move-object/from16 v20, v16

    move-object v14, v8

    :goto_3
    const-string v13, "delayCloseLoadWindow"

    if-eqz v3, :cond_9

    .line 226
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object/from16 v16, v20

    :goto_4
    move-object/from16 v20, v0

    const-string v0, "loadName"

    .line 227
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v0, "isShowLoadPic"

    .line 228
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v20, v0

    :cond_8
    const-string v0, "loadPicUrl"

    .line 229
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v0, "loadContent"

    .line 230
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v0, "loadingActivityNewTask"

    .line 232
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v26, v20

    move-object/from16 v3, v22

    move-object/from16 v22, v12

    move-object/from16 v20, v15

    move-object/from16 v12, v16

    move-object/from16 v15, v25

    move-object/from16 v16, v13

    move-object/from16 v13, v23

    goto :goto_5

    :cond_9
    move-object/from16 v22, v12

    move-object/from16 v26, v22

    move-object/from16 v20, v15

    move-object/from16 v12, v16

    move-object/from16 v27, v12

    move-object/from16 v3, v19

    move-object v15, v3

    move-object/from16 v24, v15

    move-object/from16 v16, v13

    move-object/from16 v13, v24

    .line 236
    :goto_5
    invoke-static {v1, v6, v14, v8}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->checkIsCloudApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 242
    :cond_a
    invoke-static {v1, v9, v10, v11}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;

    move-result-object v8

    if-nez v8, :cond_b

    return-void

    .line 247
    :cond_b
    iget-object v0, v8, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->newurl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 248
    iget-object v0, v8, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->newurl:Ljava/lang/String;

    move-object v9, v0

    goto :goto_6

    :cond_c
    move-object/from16 v9, v18

    :goto_6
    if-ltz v2, :cond_d

    .line 253
    invoke-virtual {v8, v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    .line 257
    :cond_d
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object/from16 v0, p3

    .line 260
    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setPackageName(Ljava/lang/String;)V

    .line 268
    :cond_e
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getIsNeedLoading()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "dont need loading; because packageName is same"

    .line 272
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v8, v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    if-eqz v6, :cond_10

    const-string/jumbo v0, "showLoading"

    .line 278
    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    const-string v10, "dont need loading; because param showLoading"

    .line 279
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v6, v0, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    :cond_10
    if-eqz v6, :cond_11

    const-string v0, "delay"

    .line 284
    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v2, "dont need delay; because param has delay"

    .line 285
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v2, " parse delay erro"

    .line 290
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_8
    if-nez p5, :cond_12

    .line 296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    goto :goto_9

    :cond_12
    move-object/from16 v2, p5

    .line 299
    :goto_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 301
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_APPNAME_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_PICURL_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_URI_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 308
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v0

    const-string/jumbo v6, "tHSM0JWysNYW"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v0

    .line 309
    sget-object v6, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_UPDATA_BLACKLIST_KEY:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getRouterUploadOpenDataBlackList()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_13
    move-object/from16 v0, v19

    :goto_a
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getIsNeedLoading()Z

    move-result v0

    const-string v6, "TimeLine"

    const-string v14, "; time="

    if-nez v0, :cond_14

    .line 313
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_SHOWLOADING_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dont need loading;  delay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getDelay()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getLaunchMode()I

    move-result v0

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getVoiceParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 p1, v9

    move/from16 p2, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v7

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->uriProcess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uriProcess spend : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_14
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 324
    :try_start_1
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_b
    const-string v0, "genie://com.alibaba.ailabs.genie.router/open"

    .line 330
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 p2, v6

    .line 336
    new-instance v6, Landroid/content/Intent;

    move-wide/from16 v17, v4

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v6, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "name"

    .line 337
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v22

    .line 338
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v4, v20

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v12, v26

    .line 339
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v4, v21

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "pic_url"

    .line 340
    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "content"

    .line 341
    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "uri"

    .line 342
    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getLaunchMode()I

    move-result v0

    const-string v4, "lunchMode"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getVoiceParameter()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "voiceParameter"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getShowProgress()Z

    move-result v0

    const-string/jumbo v4, "showProgress"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "packageName"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getDelay()I

    move-result v0

    move-object/from16 v4, v16

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "token"

    .line 348
    invoke-virtual {v6, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v2, :cond_16

    .line 351
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_SHOWLOADING_KEY:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    const-string v0, "intentData"

    .line 353
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v2, v27

    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, 0x10000000

    .line 355
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    :cond_17
    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must need loading;  loadintent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Router open spend : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_c
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v2, -0x1

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static openByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x10000000

    .line 431
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static openByUri(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "GenieAIRouter"

    if-eqz p1, :cond_b

    .line 715
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v1, :cond_b

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 721
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 734
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 736
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 738
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const/high16 v3, 0x14000000

    .line 742
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p4, :cond_2

    .line 745
    invoke-virtual {v4, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    if-nez p2, :cond_6

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 751
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 752
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 754
    invoke-virtual {p2, p3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 755
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 758
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startActivity uri = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p3, 0x0

    .line 762
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, p2, p1}, Lcom/alibaba/ailabs/genie/router/message/UriProcessMessage;->maybePublisSelf(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    .line 767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start activity uri22 = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 771
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "pkg"

    .line 773
    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 775
    new-instance p3, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://com.alibaba.ailabs.geniemarket/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 776
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p4, :cond_4

    .line 778
    invoke-virtual {p3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 780
    :cond_4
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 784
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start activity not install, jump to appstore, uri = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    if-ne p2, v2, :cond_7

    .line 787
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start broadcast  packageName= "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " action = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 791
    :cond_7
    :try_start_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 792
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    :cond_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    .line 804
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start service packageName = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "server name "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string v1, "null"

    :goto_1
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez p2, :cond_a

    .line 807
    :try_start_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 808
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "start service erro __ activity packageName = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 812
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_1
    move-exception p2

    .line 817
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "start service erro ; e="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 819
    :try_start_6
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_2
    move-exception p0

    .line 823
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_2
    return-void

    .line 716
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception p0

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " openURI error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " url = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    throw p0
.end method

.method public static processProxyApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_2

    .line 1345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1350
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    const/high16 v2, 0x10000000

    if-nez v0, :cond_1

    .line 1353
    new-instance v0, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://com.alibaba.ailabs.geniemarket/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1354
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1355
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1356
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1358
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1359
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1363
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static registTaskClient(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "GenieAIRouter"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registTaskClient, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    .line 366
    sget-object v0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    new-instance v1, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setSceneInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V

    .line 395
    sget-object p0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static remodify(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;)V
    .locals 13

    if-eqz p1, :cond_e

    .line 1043
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getVersionCode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getVersionCode()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remodify version config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getVersionCode()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 1050
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1051
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1052
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;

    if-eqz v6, :cond_0

    .line 1054
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 1055
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v8, :cond_0

    .line 1057
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1058
    invoke-virtual {v3, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 1060
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1067
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    const-string v6, "null"

    if-eqz v5, :cond_a

    :try_start_3
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1068
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Integer;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 1069
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "re order version keys = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-static {v5, v8}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->convertIntegerArrayToString([Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 1070
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_7

    .line 1071
    aget-object v8, v5, v7

    .line 1074
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1075
    invoke-virtual {v3, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    const-string/jumbo v11, "re order key = "

    if-eqz v10, :cond_2

    .line 1076
    :try_start_4
    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1077
    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1078
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; newPkgName="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1083
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v12, 0x80

    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 1084
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; app version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v10

    goto :goto_3

    :catch_2
    move-exception v10

    const/4 v9, 0x0

    .line 1086
    :goto_3
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    if-lez v9, :cond_7

    add-int/lit8 v10, v7, 0x1

    .line 1091
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v11, v9, :cond_7

    .line 1092
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v9, v11, :cond_3

    goto :goto_5

    .line 1095
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v9, v11, :cond_5

    .line 1096
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    if-ne v7, v11, :cond_4

    goto :goto_5

    .line 1099
    :cond_4
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    if-ge v7, v11, :cond_6

    .line 1100
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-gt v10, v7, :cond_6

    aget-object v7, v5, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v9, v7, :cond_6

    :goto_5
    move-object v0, v8

    goto :goto_6

    .line 1105
    :cond_5
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v9, v7, :cond_6

    .line 1106
    array-length p0, v5

    add-int/lit8 p0, p0, -0x1

    aget-object v0, v5, p0

    goto :goto_6

    :cond_6
    move v7, v10

    goto/16 :goto_2

    .line 1118
    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_8

    .line 1119
    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;

    move-object v2, p0

    .line 1121
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select key ="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; select new config="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v0, v6

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modify before config="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    move-object v0, v6

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c

    .line 1126
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1127
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getUrl()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->newurl:Ljava/lang/String;

    .line 1128
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getDelay()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setDelay(I)V

    .line 1129
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->isNeedLoading()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setIsNeedLoading(Z)V

    .line 1130
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->isShowProgress()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setShowProgress(Z)V

    .line 1131
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getLaunchMode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setLaunchMode(I)V

    .line 1132
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setPackageName(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig;->getNewpath()Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean$NewConfig$Newpath;->getVoiceParameter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->setVoiceParameter(Ljava/lang/String;)V

    .line 1135
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modify after config="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean$DataBean$UriBean$HostListBean$PathListBean;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    :catch_3
    move-exception p0

    .line 1137
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_9
    return-void
.end method

.method public static reportRecentUseInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 593
    new-instance v0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$2;

    invoke-direct {v0, p2, p1, p0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendExitLoadWindowBroadCast(Landroid/content/Context;)V
    .locals 2

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.smartapp.exit.loadwindow"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 76
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static startActivityFromIntentString(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "#Intent"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 416
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->getIntentFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 417
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 420
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->startService(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->startService(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static uriProcess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    const-string/jumbo v0, "skillId"

    const-string/jumbo v4, "router"

    const-string/jumbo v5, "utterance"

    if-eqz v1, :cond_11

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 474
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, ""

    if-eqz v7, :cond_1

    .line 479
    :try_start_1
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 480
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 481
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v9, v8

    move-object v10, v9

    .line 484
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 486
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v11, p3

    .line 487
    invoke-static {v1, v7, v11}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->voiceProcess(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v11, "genie"

    .line 491
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v12, "GenieAIRouter"

    if-eqz v11, :cond_3

    :try_start_2
    const-string v11, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "/skill"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open uri, skill invoke; uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 495
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 496
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DirectNlu"

    const-string v4, "SkillInvoke"

    .line 497
    invoke-static {v1, v0, v4, v5}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->invokeSkill(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    .line 499
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v11, "PreciseAction"

    const-string v13, "AliGenie.Routine"

    const-string v14, "device_client"

    const-string/jumbo v15, "sceneName"

    const-string v6, "id"

    const-string v10, "code"

    if-eqz v0, :cond_a

    :try_start_3
    const-string v0, "precise.action.tpl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open uri, zhiling invoke; uri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 505
    :try_start_4
    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v7, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {v7, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 508
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 509
    invoke-virtual {v7}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 511
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 512
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 p2, v9

    const-string/jumbo v9, "showLoading"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 513
    invoke-virtual {v7, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object/from16 p2, v9

    :cond_5
    :goto_2
    move-object/from16 v9, p2

    goto :goto_1

    .line 518
    :cond_6
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 520
    invoke-virtual {v7, v10, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "tplId"

    .line 523
    invoke-virtual {v7, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_8
    invoke-virtual {v7, v15, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 528
    invoke-virtual {v7, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "params"

    .line 531
    invoke-virtual {v7, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v11, v4, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 536
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 538
    :cond_a
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "precise.action.cmd"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open uri, zhiling invoke cmd; uri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 543
    :try_start_6
    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {v7, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v6, "cmdType"

    const-string v7, "operation_defined"

    .line 548
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {v5, v15, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "cmdId"

    .line 551
    invoke-virtual {v5, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "cmdCode"

    .line 554
    invoke-virtual {v5, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v11, v4, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 560
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_d
    move/from16 v0, p2

    move-object/from16 v4, p4

    .line 563
    invoke-static {v1, v2, v0, v4, v3}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->openByUri(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    :goto_3
    if-eqz v3, :cond_f

    .line 580
    sget-object v0, Lcom/alibaba/ailabs/genie/router/bean/utils/GenieRouterConstant;->ROUTER_UPDATA_BLACKLIST_KEY:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->reportRecentUseInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v1, 0x0

    return v1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_11
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method private static voiceProcess(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 652
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nlp"

    .line 657
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 658
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 662
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
