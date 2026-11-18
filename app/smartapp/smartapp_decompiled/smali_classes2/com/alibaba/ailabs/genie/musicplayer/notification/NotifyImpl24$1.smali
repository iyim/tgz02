.class Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "NotifyImpl24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;

.field final synthetic val$song:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->val$song:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "NotifyImpl24"

    const-string v0, "onResourceReady"

    .line 97
    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->val$song:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
