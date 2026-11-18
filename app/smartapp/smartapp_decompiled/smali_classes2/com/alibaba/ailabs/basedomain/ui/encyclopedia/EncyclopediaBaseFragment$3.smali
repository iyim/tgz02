.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;
.super Ljava/lang/Object;
.source "EncyclopediaBaseFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    if-ne p1, v0, :cond_0

    .line 260
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->stopRollText()V

    :cond_0
    return-void
.end method

.method public onTtsBegin(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTtsEnd(I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mSessionId:I

    if-ne p1, v0, :cond_0

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->stopRollText()V

    :cond_0
    return-void
.end method
