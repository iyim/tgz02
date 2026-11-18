.class public Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;
.super Ljava/lang/Object;
.source "UltronEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/engine/UltronEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDataModel"
.end annotation


# instance fields
.field public bizData:Lcom/alibaba/fastjson/JSONObject;

.field public userData:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
