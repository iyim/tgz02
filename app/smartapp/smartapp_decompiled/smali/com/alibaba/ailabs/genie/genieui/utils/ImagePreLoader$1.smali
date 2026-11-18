.class Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;
.super Ljava/lang/Object;
.source "ImagePreLoader.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadSuccess(Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePreLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->preLoadList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
