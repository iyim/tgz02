.class public Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow$LoadingHandler;
.super Landroid/os/Handler;
.source "TeleComLoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 100
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/TeleComLoadingWindow;->access$300()V

    :goto_0
    return-void
.end method
