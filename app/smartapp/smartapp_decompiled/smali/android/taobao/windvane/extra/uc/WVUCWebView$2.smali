.class final Landroid/taobao/windvane/extra/uc/WVUCWebView$2;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 679
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;->onReceiveValue([Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveValue([Ljava/lang/Object;)V
    .locals 10

    .line 682
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ":"

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .line 684
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 686
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    .line 688
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 690
    aget-object v2, p1, v1

    const-string v3, "e"

    const-string/jumbo v4, "w"

    const-string v5, "i"

    const-string v6, "d"

    const-string/jumbo v7, "v"

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v2, :cond_4

    .line 691
    aget-object v2, p1, v9

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    .line 692
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, p1, v1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 693
    :cond_0
    aget-object v2, p1, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, p1, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 695
    :cond_1
    aget-object v2, p1, v9

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, p1, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 697
    :cond_2
    aget-object v2, p1, v9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 698
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, p1, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 699
    :cond_3
    aget-object v2, p1, v9

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 700
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, p1, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 703
    :cond_4
    aget-object v1, p1, v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 704
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_5
    aget-object v1, p1, v9

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 706
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_6
    aget-object v1, p1, v9

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 708
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_7
    aget-object v1, p1, v9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 710
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_8
    aget-object v1, p1, v9

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 712
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
