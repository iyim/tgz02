.class Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$2;
.super Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;
.source "RegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->tryRegister(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$2;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$2;->setArg(Ljava/lang/Object;)V

    return-void
.end method
