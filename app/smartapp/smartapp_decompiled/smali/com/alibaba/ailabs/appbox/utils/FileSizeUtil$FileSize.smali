.class public Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;
.super Ljava/lang/Object;
.source "FileSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSize"
.end annotation


# instance fields
.field private num:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->num:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNum()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->type:Ljava/lang/String;

    return-object v0
.end method
