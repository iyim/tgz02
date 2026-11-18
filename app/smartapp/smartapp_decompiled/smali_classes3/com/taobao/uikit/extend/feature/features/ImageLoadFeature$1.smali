.class Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/intf/event/IPhenixListener<",
        "Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;)Z
    .locals 5

    .line 127
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget p1, p1, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 128
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$100(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    .line 129
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iput p1, v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    return v3
.end method

.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 119
    check-cast p1, Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;->onHappen(Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;)Z

    move-result p1

    return p1
.end method
