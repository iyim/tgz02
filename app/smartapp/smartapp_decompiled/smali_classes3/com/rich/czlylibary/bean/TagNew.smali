.class public Lcom/rich/czlylibary/bean/TagNew;
.super Ljava/lang/Object;


# instance fields
.field private highlightStr:[Ljava/lang/String;

.field private lcsscore:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getHighlightStr()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/TagNew;->highlightStr:[Ljava/lang/String;

    return-object v0
.end method

.method public getLcsscore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/TagNew;->lcsscore:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/TagNew;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setHighlightStr([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/TagNew;->highlightStr:[Ljava/lang/String;

    return-void
.end method

.method public setLcsscore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/TagNew;->lcsscore:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/TagNew;->name:Ljava/lang/String;

    return-void
.end method
