.class Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;
.super Ljava/lang/Object;
.source "DXTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/DXTemplateManager$2;->onUnzipFinished(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/android/dinamicx/DXTemplateManager$2;

.field final synthetic val$fileData:[B

.field final synthetic val$fileFullPath:Ljava/lang/String;

.field final synthetic val$saveCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$size:I

.field final synthetic val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXTemplateManager$2;Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;ILcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->this$1:Lcom/taobao/android/dinamicx/DXTemplateManager$2;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$fileFullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$fileData:[B

    iput-object p4, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$saveCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p5, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$size:I

    iput-object p6, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->getInstance()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$fileFullPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$fileData:[B

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->save(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$saveCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$size:I

    if-ne v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->this$1:Lcom/taobao/android/dinamicx/DXTemplateManager$2;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXTemplateManager$2;->this$0:Lcom/taobao/android/dinamicx/DXTemplateManager;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$2$1;->val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->insertTemplateItem(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    :cond_0
    return-void
.end method
