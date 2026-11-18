.class public Lcom/rich/czlylibary/bean/ImgItem;
.super Ljava/lang/Object;


# instance fields
.field private fileId:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private imgSizeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ImgItem;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ImgItem;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgSizeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ImgItem;->imgSizeType:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ImgItem;->fileId:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ImgItem;->img:Ljava/lang/String;

    return-void
.end method

.method public setImgSizeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ImgItem;->imgSizeType:Ljava/lang/String;

    return-void
.end method
