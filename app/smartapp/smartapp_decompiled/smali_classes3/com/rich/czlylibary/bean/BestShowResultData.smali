.class public Lcom/rich/czlylibary/bean/BestShowResultData;
.super Ljava/lang/Object;


# instance fields
.field private result:[Lcom/rich/czlylibary/bean/BestShow;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResult()[Lcom/rich/czlylibary/bean/BestShow;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/BestShowResultData;->result:[Lcom/rich/czlylibary/bean/BestShow;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/BestShowResultData;->total:I

    return v0
.end method

.method public setResult([Lcom/rich/czlylibary/bean/BestShow;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/BestShowResultData;->result:[Lcom/rich/czlylibary/bean/BestShow;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/BestShowResultData;->total:I

    return-void
.end method
