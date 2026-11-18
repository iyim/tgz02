.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;
.super Ljava/lang/Object;
.source "BaikeListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6c8a8c43

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x259a6a

    if-eq v0, v1, :cond_1

    const v1, 0x650adde

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PlayIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "Open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "SelectContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 228
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;Ljava/lang/String;)V

    :goto_2
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCommandListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
