.class final Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$1;
.super Landroid/os/CountDownTimer;
.source "TeleComLoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "HomeActivityForTelecom"

    const-string v1, "onFinish"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$200()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$100(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string p1, "service.bootanim.exit"

    .line 74
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTick="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HomeActivityForTelecom"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "2"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7d0

    .line 78
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$100(I)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$200()Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 80
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
