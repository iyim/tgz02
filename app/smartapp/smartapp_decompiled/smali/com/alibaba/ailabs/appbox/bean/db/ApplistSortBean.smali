.class public Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;
.super Ljava/lang/Object;
.source "ApplistSortBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "applistsort"
.end annotation


# instance fields
.field protected appid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field protected sortIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getSortIndex()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->sortIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setSortIndex(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->sortIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplistSortBean{sortIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->sortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
