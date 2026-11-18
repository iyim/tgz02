.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivCopyRight:Landroid/widget/TextView;

.field liked:Landroid/widget/ImageView;

.field payStatusIv:Landroid/widget/TextView;

.field playingIvId:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

.field tvArtist:Landroid/widget/TextView;

.field tvIndex:Landroid/widget/TextView;

.field tvSongName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$ViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
