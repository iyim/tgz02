.class public Lcom/aliyun/oss/model/ResponseHeaderOverrides;
.super Ljava/lang/Object;
.source "ResponseHeaderOverrides.java"


# static fields
.field public static final RESPONSE_HEADER_CACHE_CONTROL:Ljava/lang/String; = "response-cache-control"

.field public static final RESPONSE_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "response-content-disposition"

.field public static final RESPONSE_HEADER_CONTENT_ENCODING:Ljava/lang/String; = "response-content-encoding"

.field public static final RESPONSE_HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "response-content-language"

.field public static final RESPONSE_HEADER_CONTENT_TYPE:Ljava/lang/String; = "response-content-type"

.field public static final RESPONSE_HEADER_EXPIRES:Ljava/lang/String; = "response-expires"


# instance fields
.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLangauge:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expires:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLangauge()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentLangauge:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLangauge(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentLangauge:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-void
.end method
