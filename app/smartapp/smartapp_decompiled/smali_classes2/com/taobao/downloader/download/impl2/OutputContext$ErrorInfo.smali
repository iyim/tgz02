.class public Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
.super Ljava/lang/Object;
.source "OutputContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/downloader/download/impl2/OutputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorInfo"
.end annotation


# instance fields
.field public connectError:Z

.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public ioError:Z

.field public originalErrorCode:I

.field public readStreamError:Z

.field public success:Z

.field public urlError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->success:Z

    return-void
.end method


# virtual methods
.method public addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->success:Z

    .line 118
    iput p1, p0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->errorCode:I

    .line 119
    iput p2, p0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->originalErrorCode:I

    .line 120
    iput-object p3, p0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->errorMsg:Ljava/lang/String;

    return-object p0
.end method
