.class public Lcom/uc/webview/export/cyclone/UCHashMap;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/uc/webview/export/cyclone/UCHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
