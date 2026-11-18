.class public Lcom/alibaba/ailabs/genie/assistant/AliDialogUtil;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"


# static fields
.field public static TAG:Ljava/lang/String; = "AliDialogUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setSystemAlertWindowType(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x7d3

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void
.end method

.method public static showScreenDistanceTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/AliDialogUtil;->setSystemAlertWindowType(Landroid/view/Window;)V

    .line 24
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->show()V

    .line 25
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/AliDialogUtil;->TAG:Ljava/lang/String;

    const-string v1, "showScreenDistanceTipDialog"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
