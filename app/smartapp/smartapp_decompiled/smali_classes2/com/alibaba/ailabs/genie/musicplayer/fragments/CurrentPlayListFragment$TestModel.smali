.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;
.super Ljava/lang/Object;
.source "CurrentPlayListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestModel"
.end annotation


# instance fields
.field private from:I

.field private isPlaying:Z

.field private to:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->from:I

    .line 373
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->to:I

    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->from:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->to:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->isPlaying:Z

    return v0
.end method

.method public setFrom(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->from:I

    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->isPlaying:Z

    return-void
.end method

.method public setTo(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;->to:I

    return-void
.end method
