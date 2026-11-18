.class final Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/engine/template/TemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TemplateCacheInfo"
.end annotation


# instance fields
.field originalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

.field templateJson:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager$1;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
