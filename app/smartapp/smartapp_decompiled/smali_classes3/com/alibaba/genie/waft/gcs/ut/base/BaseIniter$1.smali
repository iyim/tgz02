.class Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter$1;
.super Ljava/lang/Object;
.source "BaseIniter.java"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter$1;->this$0:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0.1"

    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "turandot"

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 3

    const-string v0, "UtSystem: -"

    const-string v1, "\u5f53\u524d\u6ce8\u518c\u7684 appkey 26062527  \u5f53\u524d\u4f7f\u7528\u7684auth_code magicbox_d"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    const-string v1, "26062527"

    const-string v2, "magicbox_d"

    invoke-direct {v0, v1, v2}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUTLogEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
