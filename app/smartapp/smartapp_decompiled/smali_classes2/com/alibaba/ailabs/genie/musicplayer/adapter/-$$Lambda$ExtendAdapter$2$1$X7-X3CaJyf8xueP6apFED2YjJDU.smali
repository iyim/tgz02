.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->lambda$onLoadFailed$69$ExtendAdapter$2$1(Landroid/widget/ImageView;)V

    return-void
.end method
