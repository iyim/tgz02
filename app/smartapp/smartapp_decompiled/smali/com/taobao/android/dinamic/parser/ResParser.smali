.class public Lcom/taobao/android/dinamic/parser/ResParser;
.super Lcom/taobao/android/dinamic/parser/AbstractParser;
.source "ResParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Home.ResParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/android/dinamic/parser/AbstractParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public openXmlResourceParser(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/view/ViewResult;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getLayoutParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method
