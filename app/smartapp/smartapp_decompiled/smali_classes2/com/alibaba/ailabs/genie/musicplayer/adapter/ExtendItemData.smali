.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;
.super Ljava/lang/Object;
.source "ExtendItemData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dataType:I

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->t:Ljava/lang/Object;

    .line 12
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->dataType:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->dataType:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->t:Ljava/lang/Object;

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->dataType:I

    return-void
.end method
