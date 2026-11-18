.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->lambda$onBindViewHolder$61$ExtendAdapter(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;Landroid/view/View;)V

    return-void
.end method
