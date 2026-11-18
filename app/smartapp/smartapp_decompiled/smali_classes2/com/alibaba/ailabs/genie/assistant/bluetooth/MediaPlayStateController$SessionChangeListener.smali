.class Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;
.super Ljava/lang/Object;
.source "MediaPlayStateController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$1;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onActiveSessionsChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 210
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    const-string v2, ""

    .line 218
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->getMediaControllerTag(Landroid/media/session/MediaController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "A2dpMediaBrowserService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->getMediaControllerTag(Landroid/media/session/MediaController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMediaBrowserService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$400(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Landroid/media/session/MediaController;)V

    return-void

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;->onActiveSessionsChanged(Ljava/util/List;)V

    :cond_4
    return-void
.end method
