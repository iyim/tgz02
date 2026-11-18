.class public final Lcom/alipay/vi/android/phone/mrpc/core/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/vi/android/phone/mrpc/core/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "transfer-encoding"

    const-string v1, "content-length"

    const-string v2, "content-type"

    const-string v3, "content-encoding"

    const-string v4, "connection"

    const-string v5, "location"

    const-string v6, "proxy-connection"

    const-string v7, "www-authenticate"

    const-string v8, "proxy-authenticate"

    const-string v9, "content-disposition"

    const-string v10, "accept-ranges"

    const-string v11, "expires"

    const-string v12, "cache-control"

    const-string v13, "last-modified"

    const-string v14, "etag"

    const-string v15, "set-cookie"

    const-string v16, "pragma"

    const-string v17, "refresh"

    const-string v18, "x-permitted-cross-domain-policies"

    .line 124
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->f:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;

    const/16 v0, 0x13

    .line 123
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a:J

    const-wide/16 v0, -0x1

    .line 152
    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->b:J

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->c:I

    .line 154
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1

    const-string v0, "Close"

    .line 454
    invoke-static {p1, p2, v0}, Lcom/alipay/vi/android/phone/mrpc/core/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 456
    iput p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->c:I

    goto :goto_0

    :cond_0
    const-string v0, "Keep-Alive"

    .line 457
    invoke-static {p1, p2, v0}, Lcom/alipay/vi/android/phone/mrpc/core/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 459
    iput p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->c:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->c:I

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->b:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeaders(Lcom/alipay/vi/android/phone/mrpc/core/Headers$HeaderCallback;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 438
    sget-object v3, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 447
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    invoke-interface {p1, v2, v3}, Lcom/alipay/vi/android/phone/mrpc/core/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransferEncoding()J
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a:J

    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6

    const/16 v0, 0x3a

    .line 157
    invoke-static {p1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p1, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 167
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 298
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "content-encoding"

    .line 208
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 209
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v0, 0x3

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "location"

    .line 219
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 220
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v0, 0x5

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "accept-ranges"

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 246
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xa

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "transfer-encoding"

    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    aput-object v4, v2, v1

    .line 176
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v2, Lorg/apache/http/message/ParserCursor;

    .line 178
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v2, v0, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 177
    invoke-virtual {v1, p1, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object p1

    .line 181
    array-length v0, p1

    const-string v1, "identity"

    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_2

    .line 183
    iput-wide v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a:J

    goto/16 :goto_0

    :cond_2
    if-lez v0, :cond_3

    sub-int/2addr v0, v3

    .line 184
    aget-object p1, p1, v0

    .line 186
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x2

    .line 187
    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a:J

    goto/16 :goto_0

    .line 189
    :cond_3
    iput-wide v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a:J

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "set-cookie"

    .line 277
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 278
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xf

    aput-object v4, p1, v0

    .line 279
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "refresh"

    .line 288
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 289
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0x11

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "content-type"

    .line 203
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 204
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v0, 0x2

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "proxy-connection"

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v4, v1, v2

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "last-modified"

    .line 267
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 268
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xd

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "etag"

    .line 272
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 273
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xe

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "cache-control"

    .line 255
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 258
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xc

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    aget-object p1, p1, v0

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_b
    const-string p1, "www-authenticate"

    .line 230
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 231
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v0, 0x7

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "proxy-authenticate"

    .line 235
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 236
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0x8

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_d
    const-string v1, "connection"

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto :goto_0

    :sswitch_e
    const-string p1, "pragma"

    .line 283
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 284
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0x10

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_f
    const-string p1, "content-length"

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    aput-object v4, p1, v3

    .line 197
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_10
    const-string p1, "content-disposition"

    .line 240
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 241
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0x9

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_11
    const-string p1, "expires"

    .line 250
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 251
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0xb

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_12
    const-string p1, "x-permitted-cross-domain-policies"

    .line 293
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 294
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v0, 0x12

    aput-object v4, p1, v0

    :catch_0
    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_11
        -0x4b88f79d -> :sswitch_10
        -0x4384d946 -> :sswitch_f
        -0x3a6d1ac4 -> :sswitch_e
        -0x2e3b8122 -> :sswitch_d
        -0x11fc9c2c -> :sswitch_c
        -0xe7c74b5 -> :sswitch_b
        -0xc71a9ee -> :sswitch_a
        0x2fa915 -> :sswitch_9
        0x8f17c20 -> :sswitch_8
        0x110aef9d -> :sswitch_7
        0x2ed4600e -> :sswitch_6
        0x40b292db -> :sswitch_5
        0x49be662f -> :sswitch_4
        0x4bf6b0f5 -> :sswitch_3
        0x53476b3b -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x7ce07427 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 376
    iput-wide p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->b:J

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    return-void
.end method
