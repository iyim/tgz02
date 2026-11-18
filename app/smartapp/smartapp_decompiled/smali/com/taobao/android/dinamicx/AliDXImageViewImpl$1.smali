.class Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;
.super Ljava/lang/Object;
.source "AliDXImageViewImpl.java"

# interfaces
.implements Lcom/taobao/android/AliImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/AliDXImageViewImpl;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/android/AliImageListener<",
        "Lcom/taobao/android/AliImageSuccEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

.field final synthetic val$imageOption:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/AliDXImageViewImpl;Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;->this$0:Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;->val$imageOption:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lcom/taobao/android/AliImageEvent;)Z
    .locals 0

    .line 70
    check-cast p1, Lcom/taobao/android/AliImageSuccEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;->onHappen(Lcom/taobao/android/AliImageSuccEvent;)Z

    move-result p1

    return p1
.end method

.method public onHappen(Lcom/taobao/android/AliImageSuccEvent;)Z
    .locals 1

    .line 73
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;-><init>()V

    .line 74
    invoke-interface {p1}, Lcom/taobao/android/AliImageSuccEvent;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;->drawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object p1, p0, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;->val$imageOption:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->listener:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;

    invoke-interface {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;->onHappen(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;)Z

    const/4 p1, 0x0

    return p1
.end method
