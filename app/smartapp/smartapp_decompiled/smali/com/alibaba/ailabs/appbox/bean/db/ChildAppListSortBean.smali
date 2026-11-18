.class public Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;
.super Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;
.source "ChildAppListSortBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "child_app_list_sort"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->appid:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildAppListSortBean{sortIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->sortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
