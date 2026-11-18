.class public Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Imp"
.end annotation


# instance fields
.field private h:I

.field private id:Ljava/lang/String;

.field private mimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getH()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->h:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->mimes:Ljava/util/List;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->w:I

    return v0
.end method

.method public setH(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->h:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->id:Ljava/lang/String;

    return-void
.end method

.method public setMimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->mimes:Ljava/util/List;

    return-void
.end method

.method public setW(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->w:I

    return-void
.end method
