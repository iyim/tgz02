.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTtsListener"
.end annotation


# instance fields
.field private forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTtsCallback(II)V
    .locals 0

    .line 539
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    .line 540
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 544
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$300(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 545
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$300(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    .line 546
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;->forbiddenModeManager:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$302(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    :cond_2
    return-void
.end method
