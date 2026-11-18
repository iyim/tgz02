.class public final Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;
.super Ljava/lang/Object;
.source "UltronDebugInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/inter/UltronDebugInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataMapBuilder"
.end annotation


# instance fields
.field dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->dataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
