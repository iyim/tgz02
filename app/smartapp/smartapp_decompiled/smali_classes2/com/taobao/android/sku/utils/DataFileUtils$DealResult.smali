.class public Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;
.super Ljava/lang/Object;
.source "DataFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/utils/DataFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DealResult"
.end annotation


# instance fields
.field public fileMd5:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->filePath:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/taobao/android/sku/utils/DataFileUtils$DealResult;->fileMd5:Ljava/lang/String;

    return-void
.end method
