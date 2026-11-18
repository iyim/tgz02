.class Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;
.super Ljava/lang/Object;
.source "LrcView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1400(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1400(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1500(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 739
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 740
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)F

    .line 741
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$502(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method
