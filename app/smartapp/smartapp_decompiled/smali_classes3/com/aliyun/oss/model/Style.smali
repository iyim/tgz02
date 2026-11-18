.class public Lcom/aliyun/oss/model/Style;
.super Ljava/lang/Object;
.source "Style.java"


# instance fields
.field private creationDate:Ljava/util/Date;

.field private lastModifyTime:Ljava/util/Date;

.field private style:Ljava/lang/String;

.field private styleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public GetCreationDate()Ljava/util/Date;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aliyun/oss/model/Style;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public GetLastModifyTime()Ljava/util/Date;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aliyun/oss/model/Style;->lastModifyTime:Ljava/util/Date;

    return-object v0
.end method

.method public GetStyle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/aliyun/oss/model/Style;->style:Ljava/lang/String;

    return-object v0
.end method

.method public GetStyleName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aliyun/oss/model/Style;->styleName:Ljava/lang/String;

    return-object v0
.end method

.method public SetCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/oss/model/Style;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public SetLastModifyTime(Ljava/util/Date;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/Style;->lastModifyTime:Ljava/util/Date;

    return-void
.end method

.method public SetStyle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/aliyun/oss/model/Style;->style:Ljava/lang/String;

    return-void
.end method

.method public SetStyleName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/aliyun/oss/model/Style;->styleName:Ljava/lang/String;

    return-void
.end method
