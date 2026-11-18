.class public Lcom/ulog/uploader/client/DefaultULogUploader;
.super Ljava/lang/Object;
.source "DefaultULogUploader.java"

# interfaces
.implements Lcom/ulog/uploader/client/IULogUploader;


# instance fields
.field private final appId:Ljava/lang/String;

.field private final appSecret:Ljava/lang/String;

.field private final buildSeq:Ljava/lang/String;

.field private final sVer:Ljava/lang/String;

.field private final uploadUrl:Ljava/lang/String;

.field private final utdid:Ljava/lang/String;

.field private final ver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->uploadUrl:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->appId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->appSecret:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->ver:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->sVer:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->buildSeq:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->utdid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;)I
    .locals 8

    .line 29
    iget-object v1, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->uploadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->appSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->ver:Ljava/lang/String;

    iget-object v5, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->sVer:Ljava/lang/String;

    iget-object v6, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->buildSeq:Ljava/lang/String;

    iget-object v7, p0, Lcom/ulog/uploader/client/DefaultULogUploader;->utdid:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/ulog/uploader/urlconnection/UrlConnectionStreamFetcher;->loadData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
