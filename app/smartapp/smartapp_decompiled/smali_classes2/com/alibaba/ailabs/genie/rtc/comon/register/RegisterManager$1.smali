.class Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "RegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;
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

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->tryRegister()V

    :goto_0
    return-void
.end method
