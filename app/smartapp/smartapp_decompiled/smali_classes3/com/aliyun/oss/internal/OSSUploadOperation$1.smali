.class Lcom/aliyun/oss/internal/OSSUploadOperation$1;
.super Ljava/lang/Object;
.source "OSSUploadOperation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/internal/OSSUploadOperation;->upload(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/internal/OSSUploadOperation;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/internal/OSSUploadOperation;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$1;->this$0:Lcom/aliyun/oss/internal/OSSUploadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;)I
    .locals 0

    .line 419
    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->getNumber()I

    move-result p1

    invoke-virtual {p2}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->getNumber()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 416
    check-cast p1, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    check-cast p2, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSUploadOperation$1;->compare(Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;)I

    move-result p1

    return p1
.end method
