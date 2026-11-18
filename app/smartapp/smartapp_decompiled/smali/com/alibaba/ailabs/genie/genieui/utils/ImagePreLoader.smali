.class public Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;
.super Ljava/lang/Object;
.source "ImagePreLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImagePreLoader"


# instance fields
.field public imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

.field public preLoadList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->preLoadList:Ljava/util/HashMap;

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;)V

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    sget-object v1, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->IMAGE_LOADER_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$InstanceHolder;->preLoader:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    return-object v0
.end method


# virtual methods
.method public getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->preLoadList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public varargs load([Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->load([Ljava/lang/String;)V

    return-void
.end method
