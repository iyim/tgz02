.class public Lcom/alibaba/ailabs/searchbox/SearchConstans;
.super Ljava/lang/Object;
.source "SearchConstans.java"


# static fields
.field public static final DATA_SEARCH_CONTENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "appsearch.json"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/searchbox/SearchConstans;->DATA_SEARCH_CONTENT:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
