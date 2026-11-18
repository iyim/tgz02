.class public Lcom/alibaba/ailabs/genie/contacts/utils/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static utClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    const-string v1, "data"

    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TmallGenie_contacts"

    .line 21
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
