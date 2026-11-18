.class Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;
.super Ljava/lang/Object;
.source "BinaryPageFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;->this$1:Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;->this$1:Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$100(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    move-result-object v0

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;->this$1:Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    invoke-static {v0, v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$102(Lcom/taobao/uikit/feature/features/BinaryPageFeature;Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    :cond_0
    return-void
.end method
