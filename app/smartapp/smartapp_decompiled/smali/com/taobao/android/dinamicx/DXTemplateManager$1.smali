.class Lcom/taobao/android/dinamicx/DXTemplateManager$1;
.super Ljava/lang/Object;
.source "DXTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/DXTemplateManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/DXTemplateManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXTemplateManager;Landroid/content/Context;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$1;->this$0:Lcom/taobao/android/dinamicx/DXTemplateManager;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$1;->val$context:Landroid/content/Context;

    const-string v2, "dinamicx"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
