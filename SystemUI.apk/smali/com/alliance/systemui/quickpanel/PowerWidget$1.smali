.class Lcom/alliance/systemui/quickpanel/PowerWidget$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alliance/systemui/quickpanel/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/PowerWidget;


# direct methods
.method constructor <init>(Lcom/alliance/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/alliance/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/PowerWidget;->access$200(Lcom/alliance/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_hide_onchange"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerWidget;

    #calls: Lcom/alliance/systemui/quickpanel/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/PowerWidget;->access$300(Lcom/alliance/systemui/quickpanel/PowerWidget;)V

    .line 318
    :cond_0
    return-void
.end method
