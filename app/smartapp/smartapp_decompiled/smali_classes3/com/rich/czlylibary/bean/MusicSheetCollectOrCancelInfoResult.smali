.class public Lcom/rich/czlylibary/bean/MusicSheetCollectOrCancelInfoResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private failedMusicSheetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failedNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFailedMusicSheetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicSheetCollectOrCancelInfoResult;->failedMusicSheetIds:Ljava/util/List;

    return-object v0
.end method

.method public getFailedNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicSheetCollectOrCancelInfoResult;->failedNum:Ljava/lang/String;

    return-object v0
.end method

.method public setFailedMusicSheetIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicSheetCollectOrCancelInfoResult;->failedMusicSheetIds:Ljava/util/List;

    return-void
.end method

.method public setFailedNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicSheetCollectOrCancelInfoResult;->failedNum:Ljava/lang/String;

    return-void
.end method
