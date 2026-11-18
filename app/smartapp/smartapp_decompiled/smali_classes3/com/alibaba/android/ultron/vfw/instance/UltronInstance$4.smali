.class Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;
.super Ljava/lang/Object;
.source "UltronInstance.java"

# interfaces
.implements Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderListener:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderListener:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;->onRenderFailed(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    :cond_0
    return-void
.end method
