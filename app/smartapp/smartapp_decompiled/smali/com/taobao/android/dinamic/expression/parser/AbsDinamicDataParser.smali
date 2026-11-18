.class public abstract Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
.super Ljava/lang/Object;
.source "AbsDinamicDataParser.java"

# interfaces
.implements Lcom/taobao/android/dinamic/expression/parser/DinamicDataParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parser(Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getDinamicContext()Ljava/lang/Object;

    move-result-object p2

    .line 28
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;->parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;->parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
