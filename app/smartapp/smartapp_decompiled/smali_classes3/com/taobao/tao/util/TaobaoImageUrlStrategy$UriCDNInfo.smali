.class public Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriCDNInfo"
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->url:Ljava/lang/String;

    .line 1316
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->uri:Landroid/net/Uri;

    .line 1317
    iget-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1318
    iget-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->host:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1320
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->host:Ljava/lang/String;

    :goto_0
    return-void
.end method
