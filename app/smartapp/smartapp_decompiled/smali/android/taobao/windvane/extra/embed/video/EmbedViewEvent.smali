.class public Landroid/taobao/windvane/extra/embed/video/EmbedViewEvent;
.super Ljava/lang/Object;
.source "EmbedViewEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static firevent(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p3, "{}"

    :cond_0
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string/jumbo p1, "{\"param\":{\"eventType\":\"%s\",\"bridgeId\":\"%s\",\"params\":%s}}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "embedviewevent"

    invoke-interface {p0, p2, p1}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
