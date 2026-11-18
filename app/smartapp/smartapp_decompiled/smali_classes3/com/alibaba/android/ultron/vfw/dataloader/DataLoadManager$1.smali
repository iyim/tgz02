.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$1;
.super Ljava/lang/Object;
.source "DataLoadManager.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->renderWithContextImpl(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "dataloader finished and refresh finished step6"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoadManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
