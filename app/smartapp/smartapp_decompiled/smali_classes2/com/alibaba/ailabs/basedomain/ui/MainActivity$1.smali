.class Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "MainActivity"

    const-string v0, "MSG_AUTO_BACK"

    .line 65
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->VIDEO:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getVisibleDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "Current visible page is video, no auto disappear"

    .line 67
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->onBackPressed()V

    :cond_1
    return-void
.end method
